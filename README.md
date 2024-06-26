# Website-domain-finder
This Bash script automates subdomain enumeration for a given domain using assetfinder and amass. It creates a directory structure, finds subdomains with each tool, filters results, and stores them in organized text files within a recon directory. Ideal for security testing, it facilitates efficient discovery of potential attack surfaces.
**Setup and Usage in Linux:**

1. **Setup:**
   - Ensure that `assetfinder` and `amass` are installed on your Linux system. You can typically install them using package managers like `apt` (for Debian/Ubuntu) or `yum` (for CentOS/RHEL).

     Example installation commands:
     - For `assetfinder`:
       ```
       sudo apt install assetfinder
       ```
       or
       ```
       sudo yum install assetfinder
       ```

     - For `amass`:
       ```
       sudo apt install amass
       ```
       or
       ```
       sudo yum install amass
       ```

2. **Clone the Script:**
   - Clone or download the Bash script (`subdomain_enum.sh`) from your GitHub repository or wherever it is hosted.

     Example clone command:
     ```
     git clone https://github.com/yourusername/your-repo.git
     ```

3. **Make the Script Executable:**
   - Ensure the script has executable permissions to run.

     ```
     chmod +x subdomain_enum.sh
     ```

4. **Run the Script:**
   - Execute the script by passing the domain name as an argument.

     ```
     ./subdomain_enum.sh example.com
     ```

     Replace `example.com` with the domain you want to enumerate subdomains for.

5. **Review Output:**
   - After execution, the script will create a directory structure:
     ```
     example.com/
     ├── recon/
     │   ├── amass_finder.txt
     │   └── asset_finder.txt
     ```

     - `amass_finder.txt` will contain unique subdomains found by `amass`.
     - `asset_finder.txt` will contain filtered subdomains from `assetfinder`.

6. **Customization:**
   - You can modify the script to include additional tools or customize output formats as per your requirements.

7. **GitHub Integration:**
   - Upload the modified script to GitHub for version control and collaboration with others interested in subdomain enumeration.

This setup allows efficient discovery of subdomains for security testing or asset management purposes on a Linux system, leveraging automated tools for comprehensive results. Adjustments can be made based on specific needs or additional functionalities desired.
